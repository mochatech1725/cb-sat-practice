/**
 * College Board Assessment Hierarchy
 * 
 * This defines the official College Board structure:
 * Assessment → Test Type → Domain → Skills
 * 
 * The hierarchy data is stored in hierarchy.json for easy updates.
 */

import hierarchyData from './hierarchy.json'

export interface AssessmentHierarchy {
  [assessment: string]: {
    [testType: string]: {
      [domain: string]: string[]
    }
  }
}

export const ASSESSMENT_HIERARCHY: AssessmentHierarchy = hierarchyData as AssessmentHierarchy

/**
 * Get all available assessments
 */
export function getAllAssessments(): string[] {
  return Object.keys(ASSESSMENT_HIERARCHY)
}

/**
 * Get all test types for a specific assessment
 */
export function getTestTypesForAssessment(assessment: string): string[] {
  return Object.keys(ASSESSMENT_HIERARCHY[assessment] || {})
}

/**
 * Get all domains for a specific assessment and test type
 */
export function getDomainsForTestType(assessment: string, testType: string): string[] {
  const assessmentData = ASSESSMENT_HIERARCHY[assessment]
  if (!assessmentData) return []
  return Object.keys(assessmentData[testType] || {})
}

/**
 * Get all skills for a specific domain within an assessment and test type
 */
export function getSkillsForDomain(assessment: string, testType: string, domain: string): string[] {
  const assessmentData = ASSESSMENT_HIERARCHY[assessment]
  if (!assessmentData) return []
  const testTypeData = assessmentData[testType]
  if (!testTypeData) return []
  return testTypeData[domain] || []
}

/**
 * Get all skills for multiple domains
 */
export function getSkillsForDomains(assessment: string, testType: string, domains: string[]): string[] {
  const skills: string[] = []
  domains.forEach(domain => {
    skills.push(...getSkillsForDomain(assessment, testType, domain))
  })
  return skills
}

/**
 * Validate if a skill belongs to a domain in a test type
 */
export function isValidSkill(assessment: string, testType: string, domain: string, skill: string): boolean {
  const skills = getSkillsForDomain(assessment, testType, domain)
  return skills.includes(skill)
}

// Legacy export for backward compatibility (defaults to SAT)
export const SAT_HIERARCHY = ASSESSMENT_HIERARCHY['SAT'] || {}

