// Status 200 and null check

describe('response status is 200', () => {
  it('GET', () => {
      cy.request('GET', 'https://pplknkln88.execute-api.ca-central-1.amazonaws.com')
      .then((res) => {expect(res).to.have.property('status', 200)
      })        
  })
})

describe('response body is not null', () => {
  it('GET', () => {
      cy.request('GET', 'https://pplknkln88.execute-api.ca-central-1.amazonaws.com')
      .then((res) => {expect(res.body).to.not.be.null
      })        
  })
})
